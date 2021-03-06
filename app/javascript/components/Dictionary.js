import React from "react"
import PropTypes from "prop-types"
class Dictionary extends React.Component {
  render () {
    return (
      <React.Fragment>
      <div>
        <div id="page-wrap">
          <nav className="navigation fixed-top">
            <a href="#dos" style={{textDecoration: 'none'}}>&nbsp; Definition of scrum &nbsp;</a>
            <a href="#st" style={{textDecoration: 'none'}}>&nbsp; The Scrum Team &nbsp;</a>
            <a href="#events" style={{textDecoration: 'none'}}> &nbsp; Scrum Events &nbsp;</a>
            <a href="#artifacts" style={{textDecoration: 'none'}}> &nbsp; Scrum Artifacts  &nbsp;</a>
            {/* <div class="vertical-line" ></div> */}
          </nav>
          <header>
            <nav className="navbar navbar-expand-md navbar-dark fixed-top background-header">
              <a className="navbar-brand" href="/">AgileCli</a>
              <div className="collapse navbar-collapse" id="navbarCollapse">
              </div>
            </nav><div><a name="dos" />
            </div></header>
          <br /><br /><br /><br />
          <div className="whole-page">
            <div><a name="dos" />
              <h1>Definition of scrum</h1>
              <p><b>Definition of Scrum</b> — a framework within which people can address complex adaptive problems, while productively and creatively delivering products of the highest possible value.</p>
              <p>Scrum is:</p>
              <ul>
                <li>Lightweigh</li><a name="st" />
                <li>Simple to understand</li>
                <li>Difficult to maste</li>
              </ul>
              <hr className="featurette-divider" />
            </div>
            <div>
              <h1>The scrum team</h1>
              <p>The <b>Scrum Team</b> consists of a Product Owner, the Development Team, and a Scrum Master. Scrum Teams are self-organizing and cross-functional. Self-organizing teams choose how best to accomplish their work, rather than being directed by others outside the team. Cross-functional teams have all competencies needed to accomplish the work without depending on others not part of the team. The team model in Scrum is designed to optimize flexibility, creativity, and productivity. The Scrum Team has proven itself to be increasingly effective for all the earlier stated uses, and any complex work.</p>
              <hr className="featurette-divider" />
            </div>
            <div className="po">
              <p>The <b>Product Owner</b> is the sole person responsible for managing the Product Backlog.</p>
              <p>Backlog management includes:</p>
              <ul>
                <li>Clearly expressing Product Backlog items;</li>
                <li>Ordering the items in the Product Backlog to best achieve goals and missions</li>
                <li>Optimizing the value of the work the Development Team performs;</li>
                <li>Ensuring that the Product Backlog is visible, transparent, and clear to all, and shows what the Scrum Team will work on next</li>
                <li>Ensuring the Development Team understands items in the Product Backlog to the level needed.</li>
              </ul>
              <hr className="featurette-divider" />
            </div>
            <div className="po">
              <p>The <b>Development Team</b> consists of professionals who do the work of delivering a potentially releasable Increment of “Done” product at the end of each Sprint.</p>
              <p>Development Teams have the following characteristics:</p>
              <ul>
                <li>They are self-organizing. No one (not even the Scrum Master) tells the Development Team how to turn Product Backlog into Increments of potentially releasable functionality;</li>
                <li>Development Teams are cross-functional, with all the skills as a team necessary to create a product Increment;</li>
                <li>Scrum recognizes no titles for Development Team members, regardless of the work being performed by the person;</li>
                <li>Scrum recognizes no sub-teams in the Development Team, regardless of domains that need to be addressed like testing, architecture, operations, or business analysis;</li>
                <li>Individual Development Team members may have specialized skills and areas of focus, but accountability belongs to the Development Team as a whole.</li>
              </ul>
              <hr className="featurette-divider" />
            </div>
            <div className="po"><a name="events" />
              <p>The <b>Scrum Master</b> is responsible for promoting and supporting Scrum as defined in the Scrum Guide. Scrum Masters do this by helping everyone understand Scrum theory, practices, rules, and values</p>
            </div>
            <div>
              <hr className="featurette-divider" />
              <h1>Scrum Events</h1>
              <div className="po">
                <p>The heart of Scrum is a <b>Sprint</b>, a time-box of one month or less during which a “Done”, useable, and potentially releasable product Increment is created.</p>
                <p>Sprints <b>contain and consist</b> of:</p>
                <ul>
                  <li>the Sprint Planning</li>
                  <li>Daily Scrums</li>
                  <li>the development work</li>
                  <li>the Sprint Review</li>
                  <li>the Sprint Retrospective</li>
                </ul>
                <p>During the Spring</p>
                <ul>
                  <li>No changes are made that would endanger the Sprint Goal;</li>
                  <li>Quality goals do not decrease;</li>
                  <li>Scope may be clarified and re-negotiated between the Product Owner and Development Team as more is learned.</li>
                </ul>
              </div>
              <hr className="featurette-divider" />
            </div>
            <div className="po">
              <p><b>Sprint Planning</b> The work to be performed in the Sprint is planned at the Sprint Planning. This plan is created by the collaborative work of the entire Scrum Team.</p>
              <p>Sprint Planning answers the following:</p>
              <ul>
                <li>What can be delivered in the Increment resulting from the upcoming Sprint?</li>
                <li>How will the work needed to deliver the Increment be achieved?</li>
              </ul>
              <hr className="featurette-divider" />
            </div>
            <div className="po">
              <p>The <b>Daily Scrum</b> is a 15-minute time-boxed event for the Development Team. The Daily Scrum is held every day of the Sprint. At it, the Development Team plans work for the next 24 hours. This optimizes team collaboration and performance by inspecting the work since the last Daily Scrum and forecasting upcoming Sprint work. The Daily Scrum is held at the same time and place each day to reduce complexity.</p>
            </div>
            <hr className="featurette-divider" />
            <div className="po">
              <p>A <b>Sprint Review</b> is held at the end of the Sprint to inspect the Increment and adapt the Product Backlog if needed. During the Sprint Review, the Scrum Team and stakeholders collaborate about what was done in the Sprint. Based on that and any changes to the Product Backlog during the Sprint, attendees collaborate on the next things that could be done to optimize value. This is an
                informal meeting, not a status meeting, and the presentation of the Increment is intended to elicit feedback and foster collaboration.</p>
              <hr className="featurette-divider" />
            </div>
            <div className="po">
              <p>The <b>Sprint Retrospective</b> is an opportunity for the Scrum Team to inspect itself and create a plan for improvements to be enacted during the next Sprint.</p>
              <p>The <b>purpose</b> of the Sprint Retrospective is to:</p>
              <ul>
                <li>Inspect how the last Sprint went with regards to people, relationships, process, and tools;</li>
                <li>Identify and order the major items that went well and potential improvements;</li>
                <li>Create a plan for implementing improvements to the way the Scrum Team does its work.</li>
              </ul>
              <hr className="featurette-divider" /><a name="artifacts" />
            </div>
            <div>
              <h1>Scrum Artifacts</h1>
              <div className="po">
                <p>The <b>Sprint Goal</b> is an objective set for the Sprint that can be met through the implementation of Product Backlog. It provides guidance to the Development Team on why it is building the Increment.</p>
              </div>
              <div className="po">
                <p>The <b>Product Backlog</b> is an ordered list of everything that is known to be needed in the product. It is the single source of requirements for any changes to be made to the product. The Product Owner is responsible for the Product Backlog, including its content, availability, and ordering</p>
              </div>
              <div className="po">
                <p>The <b>Sprint Backlog</b> is the set of Product Backlog items selected for the Sprint, plus a plan for delivering the product Increment and realizing the Sprint Goal. The Sprint Backlog is a forecast by the Development Team about what functionality will be in the next Increment and the work needed to deliver that functionality into a “Done” Increment.</p>
              </div>
              <div className="po">
                <p>The <b>Increment</b> is the sum of all the Product Backlog items completed during a Sprint and the value of the increments of all previous Sprints</p>
              </div>
            </div>
          </div>
          <nav className="navbar navbar-expand-md navbar-dark fixed-bot bg-dark-footer">
            <footer className="container">
              <p className="navbar-brand">AgileCli © 2019 Rubizza · <a style={{textDecoration: 'none'}} href="https://github.com/rubizza-camp/AgileCli/blob/master/LICENSE">Terms</a></p>
              <p className="float-right"><a className="btn btn-secondary" href="#" role="button">Back to top</a></p>
            </footer>
          </nav>
        </div>
      </div>

      </React.Fragment>
    );
  }
}

Dictionary.propTypes
export default Dictionary
