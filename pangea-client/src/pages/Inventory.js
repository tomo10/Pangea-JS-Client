import React, { Component } from 'react';
import API from '../API'
import Item from '../components/Item'

class Inventory extends Component {
    
state = { UserProjects: [],
          AllProjects: [] 
        }

style = {
    display: 'flex',
    flexDirection: 'column',
    alignItems: 'center',
    flexWrap: 'wrap'
  }
    
// if there is no username in state, push them back to signin so can't see Inventory
componentDidMount () {
    if (!this.props.username) {
        this.props.history.push('/signin')
    } else {
        API.getUserProjects()
            .then(UserProjects => this.setState( {UserProjects} ))
    }
}

    render() { 
        const { UserProjects } = this.state

        return ( 
            <div style={this.style} className='user-list'>
            <h3>Here's your projects:</h3>
            { UserProjects.length === 0 && <p>Sorry, you don't have any projects.</p>}
            {
              UserProjects.map(project =>
                <Item key={project.id} item={project} />
              )
            }
          </div> 
        );
    }
}
 
export default Inventory;