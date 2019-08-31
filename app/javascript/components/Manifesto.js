import React from "react"
import PropTypes from "prop-types"
class Manifesto extends React.Component {
  render () {
    return (
      <React.Fragment>
      <div>
  <header>
    <hr className="featurette-divider" />
    <hr className="featurette-divider" />
    <hr className="featurette-divider" />
    <nav className="navbar navbar-expand-md navbar-dark fixed-top background-header">
      <a className="navbar-brand" href="/">AgileCli</a>
      <div className="collapse navbar-collapse" id="navbarCollapse">
        <form className="form-inline mt-2 mt-md-0">
        </form>
      </div>
    </nav>
  </header>
  <div className="manifesto">
    <h2>Manifesto for Agile Software Development</h2>
    <div className="values">
      <p><font size={+5 }><i>Individuals and interactions</i></font> over processes and tools</p>
      <p><font size={+5 }><i>Working software</i></font> over comprehensive documentation</p>
      <p><font size={+5 }><i>Customer collaboration</i></font> over contract negotiation</p>
      <p><font size={+5 }><i>Responding to change</i></font> over following a plan</p>
    </div>
    <h2>Principles behind the Agile Manifesto</h2><br />
    <p>Our highest priority is to satisfy the customer through early and continuous delivery of valuable software.</p>
    <p>Welcome changing requirements, even late in development. Agile processes harness change for the customer's competitive advantage.</p>
    <p>Deliver working software frequently, from a couple of weeks to a couple of months, with a preference to the shorter timescale.</p>
    <p>Business people and developers must work together daily throughout the project.</p>
    <p>Build projects around motivated individuals. Give them the environment and support they need, and trust them to get the job done.</p>
    <p>The most efficient and effective method of conveying information to and within a development team is face-to-face conversation.</p>
    <p>Working software is the primary measure of progress.</p>
    <p>Agile processes promote sustainable development. The sponsors, developers, and users should be able to maintain a constant pace indefinitely.</p>
    <p>Continuous attention to technical excellence and good design enhances agility.</p>
    <p>Simplicity — the art of maximizing the amount of work not done — is essential.</p>
    <p>The best architectures, requirements, and designs emerge from self-organizing teams.</p>
    <p>At regular intervals, the team reflects on how to become more effective, then tunes and adjusts its behavior accordingly.</p>
  </div>
  <nav className="navbar navbar-expand-md navbar-dark fixed-bot bg-dark-footer">
    <footer className="container">
      <p className="navbar-brand">AgileCli © 2019 Rubizza · <a href="https://github.com/rubizza-camp/AgileCli/blob/master/LICENSE">Terms</a></p>
      <p className="float-right"><a className="btn btn-secondary" href="#" role="button">Back to top</a></p>
    </footer>
  </nav>
</div>

      </React.Fragment>
    );
  }
}

Manifesto.propTypes
export default Manifesto
