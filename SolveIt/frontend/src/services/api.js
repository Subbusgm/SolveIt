
import axios from 'axios';

const API_URL = import.meta.env.VITE_API_URL || 'http://localhost:4000/api';

export const aiApi = {
  getHints: async (problemText) => {
    return axios.post(`${API_URL}/hints`, { problemText });
  },
  getReview: async (problemText, code, explanation, language) => {
    return axios.post(`${API_URL}/review`, { problemText, code, explanation, language });
  },
  getSolution: async (problemText, language) => {
    return axios.post(`${API_URL}/solution`, { problemText, language });
  },
  getIntuition: async (problemText) => {
    return axios.post(`${API_URL}/intuition`, { problemText });
  },
  getDryRun: async (problemText, code, language) => {
    return axios.post(`${API_URL}/dryrun`, { problemText, code, language });
  }
};

export default aiApi;
