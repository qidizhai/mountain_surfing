import React from 'react';

const Greeting = ({ currentUser, logout, openModal }) => {
  const sessionLinks = () => (
    <div>
        <nav className="login-signup">
          <button className="button-login" onClick={() => openModal('login')}>Log In</button>
          <div className="divider"/>
          <button className="button-signup" onClick={() => openModal('signup')}>Join</button>
        </nav>
      </div>
  );
  const personalGreeting = () => (
    <div>
      <hgroup className="header-group">
        <h2 className="header-name">Welcome {currentUser.username}</h2>
        <div className="divider"/>
        <button className="header-button" onClick={logout}>Log Out</button>
      </hgroup>
    </div>
  );

  return currentUser ? personalGreeting() : sessionLinks();
};


export default Greeting;
