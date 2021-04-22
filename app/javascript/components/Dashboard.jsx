import React from 'react'
import HeaderNavBar from '../components/HeaderNavBar';
import { TableHeader, TableBody } from '../components/Table';

class Dashboard extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
       items: [],
       headers: []
      }
  }

  fetchPeople = () => {
    fetch('http://localhost:3000/api/v1/people/index')
    .then(r=> r.json())
    .then((people) => {
      this.setState({
        items: people.map(person => Object.values(person)),
        headers: ['Name', 'Email', 'Job Title']})
    })
  }

  fetchCharsFrequency = () => {
    fetch('http://localhost:3000/api/v1/chars_frequency/index')
    .then(r=> r.json())
    .then((charsFrequency) => {
      this.setState({
        items: Object.entries(charsFrequency),
        headers: ['Char', 'Frequency']})
    })
  }

  fetchPossibleDuplicated = () => {
    fetch('http://localhost:3000/api/v1/possible_duplicates/index')
    .then(r=> r.json())
    .then((duplicates) => {
      this.setState({
        items: duplicates.map(duplicated => Object.values(duplicated)),
        headers: ['Email', 'Possible Duplicated']})
    })
  }

  componentDidMount() {
    this.fetchPeople();
  }

  render() {
    const { headers, items } = this.state

    return (
      <div className='container'>
      <HeaderNavBar
        onPeopleClick={this.fetchPeople}
        onFrequencyClick={this.fetchCharsFrequency}
        onDuplicatedClick={this.fetchPossibleDuplicated}
      />

        <div className="table-responsive">
          <table className="table">
            <TableHeader headers={headers} />
            <TableBody items={items} />
          </table>
        </div>
      </div>
    )
  }
}
export default Dashboard
