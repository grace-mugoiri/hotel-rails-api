import React, { Component } from 'react';
import axios from 'axios';

export default class Login extends Component {
	constructor(props) {
		super(props);
		this.state = {
			username: '',
			password: ''
		}
		this.handleSubmit = this.handleSubmit.bind(this);
		this.handleChange = this.handleChange.bind(this);
	}

	handleChange(event) {
		this.setState({
			[event.target.name]: event.target.value
		})
	}

	handleSubmit(event) {
		const {
			username
		} = this.state;

		axios.post("http://localhost:3000/sessions", {
			user: {
				username: username
			}
		},
			{ withCredentials: true }
		)
			.then(response => {
				if (response.data.logged_in) {
					this.props.handleSuccessfulAuth(response.data);
				}
			})

			.catch(error => {
				console.log("login error", error);
			})
		event.preventDefault();
	}
	render() {
		return (
			<div>
				<form onSubmit={this.handleSubmit}>
					<input type="text"
						name="username"
						placeholder="username"
						value={this.state.username}
						onChange={this.handleChange} required
					/>

					<button type='submit'>Login</button>
				</form>
			</div>
		)
	}
}


