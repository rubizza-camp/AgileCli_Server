import React from "react"
import PropTypes from "prop-types"
class Header extends React.Component {
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
        <h1></h1>
      </React.Fragment>
    );
  }
}

Header.propTypes = {
  greeting: PropTypes.string
};
export default Header
