import React from "react";
import PropTypes from "prop-types";

const  modal = {
    zIndex: "9999",
    position: "absolute",
    top: "40%",
    left: "35%",
    minWidth: "250px",
    minHeight: "100px",
    padding: "15px",
    borderRadius: "10px",
    background: "#fff"
};

const button = {
  width: "50px",
  height: "30px",
  borderRadius: "3px",
  fontSize: "16px",
  font: "white",
  background: "black"
}

const bg = {
    zIndex: "9998",
    position: "absolute",
    width: "100%",
    height: "100%",
    top: "0",
    left: "0",
    background: "rgba(0,0,0,0.3)"
}

class Ticket extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      ticketName: this.props.ticket.name,
      ticketDescription: this.props.ticket.description,
      isModalOpen: false,
    };
  }

  render () {
    return (
      <React.Fragment>
      <div>
        <button style={button} onClick={() => this.openModal()}>{ this.state.ticketName }</button>
        <Description isOpen={this.state.isModalOpen} onClose={() => this.closeModal()}>
          <h3>{ this.state.ticketName }</h3>
          <p>{ this.state.ticketDescription }</p>
        </Description>
      </div>
      </React.Fragment>
    );
  }

  openModal() {
    this.setState({ isModalOpen: true });
  }

  closeModal() {
    this.setState({ isModalOpen: false });
  }
}

class Description extends React.Component {
  render() {
    if (this.props.isOpen === false) return null;

    return (
      <div>
        <div style={modal}>{this.props.children}</div>
        <div style={bg} onClick={e => this.close(e)} />
      </div>
    );
  }

  close(e) {
    e.preventDefault();

    if (this.props.onClose) {
      this.props.onClose();
    }
  }
}

export default Ticket;
