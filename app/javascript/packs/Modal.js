class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = { isModalOpen: false };
  }

  render() {
    return (
      <div>
        <button onClick={() => this.openModal()}>Open modal</button>
        <Modal
          isOpen={this.state.isModalOpen}
          onClose={() => this.closeModal()}
        >
          <h3>Modal title</h3>
          <p>Content</p>
        </Modal>
      </div>
    );
  }

  openModal() {
    this.setState({ isModalOpen: true });
  }

  closeModal() {
    this.setState({ isModalOpen: false });
  }
}

class Modal extends React.Component {
  render() {
    if (this.props.isOpen === false) return null;

    return (
      <div>
        <div className="modal">{this.props.children}</div>
        <div className="bg" onClick={e => this.close(e)} />
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

ReactDOM.render(<App />, document.getElementById("root"));
