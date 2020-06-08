import React from 'react';
import logo from './logo.svg';
import './App.css';
import UserContainer from './components/UserContainer';

function App() {
  return (
    <div className="container">
			<div className="header">
				<h2> Welcome to hotel finding. </h2>
			</div>
			<UserContainer />
    </div>
  );
}

export default App;
