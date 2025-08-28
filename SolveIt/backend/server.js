
import express from 'express';
import cors from 'cors';
import dotenv from 'dotenv';
import { GoogleGenerativeAI } from '@google/generative-ai';

dotenv.config();

const GOOGLE_API_KEY = process.env.GOOGLE_API_KEY;
const genAI = new GoogleGenerativeAI(GOOGLE_API_KEY);
const model = genAI.getGenerativeModel({ model: "gemini-1.5-flash" });

const app = express();
const PORT = process.env.PORT || 4000;


app.use(cors());
app.use(express.json());



// Hints endpoint
app.post('/api/hints', async (req, res) => {
  const { problemText } = req.body;
  try {
    const prompt = `
You are a coding mentor. Give 3 strategic hints to help solve this LeetCode problem step-by-step without revealing the full solution.
Format them clearly like:
Hint 1: ...
Hint 2: ...
Hint 3: ...

Problem:
${problemText}
`;
    const result = await model.generateContent(prompt);
    const response = await result.response;
    const text = response.text();
    const hintMatches = text.match(/Hint \d+:(.*?)(?=Hint \d+:|$)/gs) || [];
    const hints = hintMatches.map(hint => hint.replace(/Hint \d+:/, '').trim());
    res.json({ hints });
  } catch (error) {
    res.status(500).json({ error: 'AI error', details: error.message });
  }
});


// Review endpoint
app.post('/api/review', async (req, res) => {
  const { problemText, code, explanation, language } = req.body;
  try {
    const prompt = `You are a coding interview coach.
The user was given this problem:
${problemText}

They selected the language: ${language}

They wrote the following code:
${code}

Their explanation of their logic was:
${explanation || "No explanation provided."}

Give feedback: is their logic correct? What edge cases might they miss? Any better approaches?
`;
    const result = await model.generateContent(prompt);
    const response = await result.response;
    const text = response.text();
    res.json({ review: text });
  } catch (error) {
    res.status(500).json({ error: 'AI error', details: error.message });
  }
});


// Solution endpoint
app.post('/api/solution', async (req, res) => {
  const { problemText, language } = req.body;
  try {
    const prompt = `Provide the optimal ${language} solution to this problem and explain it clearly:

${problemText}`;
    const result = await model.generateContent(prompt);
    const response = await result.response;
    const text = response.text();
    res.json({ solution: text });
  } catch (error) {
    res.status(500).json({ error: 'AI error', details: error.message });
  }
});


// Intuition endpoint
app.post('/api/intuition', async (req, res) => {
  const { problemText } = req.body;
  try {
    const prompt = `
You're a helpful tutor. Explain the intuition behind solving this LeetCode problem. What key ideas, thought patterns, or observations help crack the problem? Avoid giving the full code or solution.

Problem:
${problemText}
`;
    const result = await model.generateContent(prompt);
    const response = await result.response;
    const text = response.text();
    res.json({ intuition: text });
  } catch (error) {
    res.status(500).json({ error: 'AI error', details: error.message });
  }
});


// Dry run endpoint
app.post('/api/dryrun', async (req, res) => {
  const { problemText, code, language } = req.body;
  try {
    const prompt = `
You're a coding teacher. Given this LeetCode problem and the user's solution, perform a dry run using an example test case. Walk through how the code behaves line-by-line.

Then, explain the intuition behind the dry run: what insights can we gather from it about why the solution works or fails.

Problem:
${problemText}

User's code:
${code}
`;
    const result = await model.generateContent(prompt);
    const response = await result.response;
    const text = response.text();
    res.json({ dryRun: text });
  } catch (error) {
    res.status(500).json({ error: 'AI error', details: error.message });
  }
});

app.listen(PORT, () => {
  console.log(`Backend server running on port ${PORT}`);
});
