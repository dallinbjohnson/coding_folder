import React, { Component } from 'react';
import {
	Col,
	Row
} from 'reactstrap';

class MadlibForm extends Component {

	constructor(props) {
		super(props)

		this.state = {
			color: '',
			PluralNoun: '',
			AdjectiveOne: '',
			CelebrityOne: ''
		}
	}
	
	handleChange = function(props) {
		return function(event) {
			// console.log(`Value for input: ${props.inputTitle} is: ${event.target.value}`);
			this.setState({[props.inputTitle]: event.target.value});
			console.log(`Value for input: ${props.inputTitle} is: ${this.state[props.inputTitle]}`);
		}.bind(this);
	}

	render() {
		return (

			<Row style={{textAlign: 'center', color: 'white'}}>
				<Col md="3" className="inputWrapper">
					<Row>
						<Col md="2">
							<label htmlFor="" className="greenLabel">1</label>
						</Col>
						<Col md="10">
							<input type="text" placeholder="Color" onChange={this.handleChange({inputTitle: 'Color'})} />
						</Col>
					</Row>
					<Row>
						<Col md="12">
							<div className="inputDescription">Color</div>
						</Col>
					</Row>
				</Col>
				<Col md="3" className="inputWrapper">
					<Row>
						<Col md="2">
							<label htmlFor="" className="greenLabel">2</label>
						</Col>
						<Col md="10">
							<input type="text" placeholder="Noun (Plural)" onChange={this.handleChange({inputTitle: 'PluralNoun'})} />
						</Col>
					</Row>
					<Row>
						<Col md="12">
							<div className="inputDescription">Noun (Plural)</div>
						</Col>
					</Row>
				</Col>
				<Col md="3" className="inputWrapper">
					<Row>
						<Col md="2">
							<label htmlFor="" className="greenLabel">3</label>
						</Col>
						<Col md="10">
							<input type="text" placeholder="Adjective" onChange={this.handleChange({inputTitle: 'AdjectiveOne'})} />
						</Col>
					</Row>
					<Row>
						<Col md="12">
							<div className="inputDescription">Adjective</div>
						</Col>
					</Row>
				</Col>
				<Col md="3" className="inputWrapper">
					<Row>
						<Col md="2">
							<label htmlFor="" className="greenLabel">4</label>
						</Col>
						<Col md="10">
							<input type="text" placeholder="Celebrity" onChange={this.handleChange({inputTitle: 'CelebrityOne'})} />
						</Col>
					</Row>
					<Row>
						<Col md="12">
							<div className="inputDescription">Celebrity</div>
						</Col>
					</Row>
				</Col>
			</Row>
		);
	}
}

export default MadlibForm;