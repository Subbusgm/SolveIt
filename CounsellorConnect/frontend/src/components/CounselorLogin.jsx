import Header from "./Header";
import React from "react";
const CounselorLogin = () => {
  return (
    <div>
      <Header />
      <div className="login-container">
        <div className="login-form">
          <h2 className="student-login-title">Counselor Login</h2>
          <form className="form-content">
            <div className="form-group">
              <label htmlFor="facultyid">Faculty ID</label>
              <input type="text" id="facultyid" placeholder="Enter your FacultyID" />
            </div>
            <div className="form-group">
              <label htmlFor="password">Password</label>
              <input type="password" id="password" placeholder="Enter your password" />
            </div>
            <button type="submit" className="login-button">Login</button>
          </form>
          <p className="no-account">
            Don't have an account?{" "}
            <a href="/register" className="register-link">Register here</a>
          </p>
        </div>
      </div>
    </div>
  );
};

export default CounselorLogin;
