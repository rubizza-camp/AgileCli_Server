import React from "react"
import PropTypes from "prop-types"
class HelloWorld extends React.Component {
  render () {
    return (
      <React.Fragment>
        <header>
        <nav class="navbar navbar-expand-md navbar-dark fixed-top background-header">
          <a class="navbar-brand" href="/">AgileCli</a>
          <div class="collapse navbar-collapse" id="navbarCollapse">
          </div>
        </nav>
        </header>
        <h1>POLINA</h1>
      </React.Fragment>
    );
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};
export default HelloWorld
