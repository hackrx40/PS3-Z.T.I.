import './Users.css'
import React from 'react'
import { DUMMY_USERS } from '../Dummy/DummyUsers'
import User from '../components/UIComponents/User/User'

export default function Users() {
    return (
        <div className='users__wrapper'>
            <div className='users__container'>
                <p className='users__title'>All Users</p>
                <div className='users__grid'>
                    {
                        DUMMY_USERS.map((user) => {
                            return <User key={user.id} userId={user.username} name={user.firstName + " " + user.lastName} stocksHeldCount={user.stocksHeldCount} />
                        })
                    }
                </div>
            </div>
        </div>
    )
}
