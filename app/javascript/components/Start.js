import React from "react"
import PropTypes from "prop-types"
class Start extends React.Component {
  render () {
    return (
      <React.Fragment>
      <div>
  <header>
    <nav className="navbar navbar-expand-md navbar-dark fixed-top background-header">
      <a className="navbar-brand" href="/">AgileCli</a>
      <div className="collapse navbar-collapse" id="navbarCollapse">
      </div>
    </nav>
  </header>
  <br />
  <br />
  <h1 align="center">  Installing agile-cli </h1>
  <div className="container marketing">
    <br />
    <br />
    <p>To install AgileCli, use the&nbsp;gem install&nbsp;command provided by RubyGems:</p>
    <p className="margin"><code>$ gem install agile-cli</code></p>
    <p>To verify that you have everything installed correctly, you should be able to run the following:</p>
    <p className="margin"><code> $ agile version</code></p><p>
    </p><p>If it says something like «agile 0.0.12», you are ready to continue.</p>
    <br />
    <p>To get started, you must specify the server on which you will work. Use the:</p>
    <p className="margin"><code> $ agile init REMOTE_URL</code></p>
    <p>Use the&nbsp;agile login&nbsp;command to log :</p>
    <p className="margin"><code>$ agile login</code></p>
    <p>This command opens your web browser to the Github login page. This authentication is required for   agile  commands to work correctly.</p>
    <p>Creating the Project. To get a list of commands to work with projects use </p>
    <p className="margin"><code>$ agile projects</code></p>
    <p>To create a new project, use </p>
    <p className="margin"><code>$ agile projects create  "project name"</code></p>
    <p>To get a list of commands to work with events , use </p>
    <p className="margin"><code>
        $ agile events</code></p>
    <p>To get a list of commands to work with tickets , use</p>
    <p className="margin"><code>$ agile tickets</code></p>
    <br />
  </div>
  <br />
  <nav className="navbar navbar-expand-md navbar-dark fixed-bot bg-dark-footer">
  <footer className="container">
    <p className="navbar-brand">AgileCli © 2019 Rubizza · <a href="https://github.com/rubizza-camp/AgileCli/blob/master/LICENSE">Terms</a></p>
  </footer>
</nav>
</div>
      </React.Fragment>
    );
  }
}

Start.propTypes
export default Start
