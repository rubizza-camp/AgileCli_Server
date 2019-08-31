import React from "react"
import PropTypes from "prop-types"
class Homepage extends React.Component {
  render () {
    return (
      <React.Fragment>
      <div>
  <main role="main">
    <div className="background-color-image" align="center">
      <img src="a.png" alt="" width="100%" />
    </div>
    <br />
    <div className="container marketing">
      <div className="row featurette">
        <div className="col-md-7">
          <h2 className="featurette-heading">What is a software development process? <span className="text-muted">What instruments are used to manage it?</span></h2>
          <p className="lead">  The answer is not simple. The development process can seem to be easy: team gets some tasks and manages to get them done. But this scenario is appropriate only for small projects.</p><p className="lead"> Bigger products need more complicated solutions.</p>
        </div>
        <div className="col-md-5 crop-container">
          <img src="task.png" alt="" width={350} height={300} xmlns="http://www.w3.org/2000/svg" preserveaspectratio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 500x500" />
        </div>
      </div>
      <hr className="featurette-divider" />
      <div className="row featurette">
        <div className="col-md-7 order-md-2">
          <p className="lead">Just as a human being development process should be stable. Everything in it should work cyclically. Breakdowns indicate any inner problems.</p><p className="lead">It's quite easy to find this problem if the project is small. But not for bigger product development which involves many working teams. </p><p className="lead">This leads to the need for convenient instruments for managing team productivity. There are plenty of them on the market, but not everyone works great.</p>
        </div>
        <div className="col-md-5 order-md-1 crop-container">
          <img src="agile.png" alt="" width={300} height={300} xmlns="http://www.w3.org/2000/svg" preserveaspectratio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 500x500" />
        </div>
      </div>
      <hr className="featurette-divider" />
      <div className="row featurette">
        <div className="col-md-7">
          <br />
          <p className="lead">AgileCli is the most concise command line interface which offers you many custom tools. You can manage your work according to Scrum methodology: track your tasks and events, so can your team-members.</p><p className="lead"> And everything can be done in the terminal! It's a tool for real hardcore programmers, isn't it? :)</p>
        </div>
        <div className="col-md-5 crop-container">
          <img src="terminal.png" alt="" width={350} height={300} xmlns="http://www.w3.org/2000/svg" preserveaspectratio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 500x500" />
        </div>
      </div>
      <hr className="featurette-divider" />
      <br />
      <div className align="center">
        <a className="btn btn-secondary" href="/manifesto/agile" role="button">Manifesto</a>
        <a className="btn btn-secondary" href="/dictionary/dictionary" role="button">Dictionary</a>
        <a name="start" className="btn btn-secondary" href="/homepage/start" role="button">How To Start</a>
      </div>
      <br />
      <hr className="featurette-divider" />
      <div className="row">
        <div className="col-lg-4">
          <h2><img src="mark-github.svg" width={35} height={35} alt="github" /> GitHub</h2>
          <p><a className="btn btn-secondary" href="https://github.com/rubizza-camp/AgileCli" role="button">View Client »</a></p>
        </div>
        <div className="col-lg-4">
          <h2><img src="ruby.svg" width={35} height={35} alt="" />Rubygems</h2>
          <p><a className="btn btn-secondary" href="https://rubygems.org/gems/agile-cli" role="button">View details »</a></p>
        </div>
        <div className="col-lg-4">
          <h2>Rubizza</h2>
          <p><a className="btn btn-secondary" href="https://rubizza.com/" role="button">View details »</a></p>
        </div>
      </div>
    </div>
    <nav className="navbar navbar-expand-md navbar-dark fixed-bot bg-dark-footer">
      <footer className="container">
        <p className="navbar-brand">AgileCli © 2019 Rubizza · <a href="https://github.com/rubizza-camp/AgileCli/blob/master/LICENSE" style={{textDecoration: 'none', color: 'white'}}>Terms</a></p>
        <p className="float-right"><a className="btn btn-secondary" href="#" role="button">Back to top</a></p>
      </footer>
    </nav>
  </main>
</div>

      </React.Fragment>
    );
  }
}

Homepage.propTypes
export default Homepage
