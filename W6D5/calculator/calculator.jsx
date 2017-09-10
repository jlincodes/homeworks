import React from 'react';

export default class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = {num1: '', num2: '', result: 0};
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
  }

  setNum1(e) {
    const num1 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({num1});
  }

  setNum2(e) {
    const num2 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({num2});
  }

  add(e) {
    e.preventDefault();
    const result = this.state.num1 + this.state.num2;
    this.setState({result});
  }

  subtract(e) {
    e.preventDefault();
    const result = this.state.num1 - this.state.num2;
    this.setState({result});
  }

  multiply(e) {
    e.preventDefault();
    const result = this.state.num1 * this.state.num2;
    this.setState({result});
  }

  divide(e) {
    e.preventDefault();
    const result = this.state.num1 / this.state.num2;
    this.setState({result});
  }

  clear(e) {
    e.preventDefault();
    this.setState({num1: "", num2: "", result: 0});
  }

  render() {
    const {num1, num2, result } = this.state;
    return (
      <div>
        <h1>Simple Calculator</h1>
        <h2>Enter two numbers to be calculated:</h2>
        <input onChange={this.setNum1} value={num1}/>
        <br />
        <br />
        <input onChange={this.setNum2} value={num2}/>
        <br />
        <br />
        <h3>Select an operation or clear the calculator:</h3>
        <button onClick={this.add}>+</button>
        <button onClick={this.subtract}>-</button>
        <button onClick={this.multiply}>*</button>
        <button onClick={this.divide}>/</button>
        <button onClick={this.clear}>Clear</button>
        <br />
        <br />
        <h2>Result: {this.state.result}</h2>

      </div>
    );
  }
}
