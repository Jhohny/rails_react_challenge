import React from 'react';

const HeaderNavBar = (props) => {
  const { onPeopleClick, onFrequencyClick, onDuplicatedClick } = props

  return(<nav className="navbar navbar-expand-lg navbar-light bg-light">
            <a className="navbar-brand" href="#">SalesLoft</a>
            <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span className="navbar-toggler-icon"></span>
            </button>

            <div className="collapse navbar-collapse" id="navbarSupportedContent">
              <ul className="navbar-nav mr-auto">
                <li className="nav-item active">
                  <button className="btn btn-link" onClick={onPeopleClick}>People <span className="sr-only">(current)</span></button>
                </li>
                <li className="nav-item">
                  <button className="btn btn-link" onClick={onFrequencyClick}>Frequency</button>
                </li>
                <li className="nav-item">
                  <button className="btn btn-link" onClick={onDuplicatedClick}>Duplicates?</button>
                </li>
              </ul>
            </div>
          </nav>
  );
}

export default HeaderNavBar
