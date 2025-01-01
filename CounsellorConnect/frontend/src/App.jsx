import React from "react";
import { BrowserRouter as Router, Routes, Route, Navigate } from "react-router-dom";
import StudentLogin from "./components/StudentLogin";
import Home from "./components/Home";
import CounselorLogin from "./components/CounselorLogin";
import StudentRegistration from "./components/StudentRegistration";

const App = () => {
  return (
    <Router>
      <Routes>
        {/* Default route to redirect to /home */}
        <Route path="/" element={<Navigate to="/home" />} />
        <Route path="/home" element={<Home />} />
        <Route path="/student" element={<StudentLogin />} />
        <Route path="/counselor" element={<CounselorLogin />} />
        <Route path="/register" element={<StudentRegistration />} />
      </Routes>
    </Router>
  );
};

export default App;
