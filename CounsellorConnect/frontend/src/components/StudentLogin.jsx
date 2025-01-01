import Header from "./Header";
import React from "react";
import { Link } from "react-router-dom";
const StudentLogin = () => {
  return (
    <div>
      <Header />
      <div className="login-container">
        <div className="login-form">
          <h2 className="student-login-title">Student Login</h2>
          <form className="form-content">
            <div className="form-group">
              <label htmlFor="usn">USN</label>
              <input type="text" id="usn" placeholder="Enter your USN" />
            </div>
            <div className="form-group">
              <label htmlFor="password">Password</label>
              <input type="password" id="password" placeholder="Enter your password" />
            </div>
            <button type="submit" className="login-button">Login</button>
          </form>
          <p className="no-account">
            Don't have an account?{" "}
            <Link to="/register" className="register-link">Register here</Link>
          </p>
        </div>
      </div>
    </div>
  );
};

export default StudentLogin;
