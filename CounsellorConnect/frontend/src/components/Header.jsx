import React from "react";

const Header = () => {
  return (
    <div className="header">
      <header className="header-content">
        <a href="#logo" className="logo">
          <img src="clogo.png" alt="CC" className="logo-icon" />
          <span className="logo-text">CounselorConnect</span>
        </a>

        <nav className="nav">
          <a href="#home" className="nav-link">
            Home
          </a>
          <a href="#Feedback" className="nav-link">
            Feedback
          </a>
          <a href="#complaints" className="nav-link">
            Complaints
          </a>
          <a href="#about" className="nav-link">
            About
          </a>
        </nav>

        <a href="#contact" className="contact-button">
          Contact Us
        </a>

        <button type="button" className="menu-button">
          <img src="option.jpg" alt="menu-button" className="menu-icon" />
        </button>
      </header>
    </div>
  );
};

export default Header;
