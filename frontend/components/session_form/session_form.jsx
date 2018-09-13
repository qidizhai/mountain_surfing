import React from 'react';
import { withRouter } from 'react-router-dom';
import { openModal, closeModal } from '../../actions/modal_actions';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: '',
      password: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  }

  renderErrors() {
    return(
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render_member(formType){
    if (formType === 'Log In')
      return (<p>Not a member?</p>)
    else
      return (<p>Already a member?</p>)
  }

  render() {
    return (
      <div className="login-form-container">
        <div className="login-form-box">
        <form onSubmit={this.handleSubmit}>
          <h3 className="login-title">Welcome to Mountainsurfing</h3>
          <br/>
          {this.renderErrors()}
          <div className="login-form">
            <br/>
            <input type="text"
              value={this.state.username}
              placeholder = "Username"
              onChange={this.update('username')}
              className="login-input"
            />
            <br/>
            <input type="password"
              value={this.state.password}
              placeholder = "Password"
              onChange={this.update('password')}
              className="login-input"
            />
            <br/>
            <input className="session-submit" type="submit" value={this.props.formType} />
            <div className="login-text">{this.render_member(this.props.formType)}</div>
         </div>
        </form>
        {this.props.otherForm}
      </div>
    </div>
    );
  }
}

export default withRouter(SessionForm);
