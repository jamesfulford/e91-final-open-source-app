import React from 'react';
import logo from './logo.svg';
import './App.css';

const App: React.FC = () => {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <code>
          <a
            className="App-link"
            target="_blank"
            rel="noopener noreferrer"
            href="https://www.extension.harvard.edu/course-catalog/courses/cloud-devopsmdashbasics-and-modern-techniques/15869"
          >
            Harvard E91
          </a> Final Project App!
        </code>
        <p>
          Team: James Fulford, {/* TODO(teammates): Put your name here! */}
        </p>
      </header>
    </div>
  );
}

export default App;