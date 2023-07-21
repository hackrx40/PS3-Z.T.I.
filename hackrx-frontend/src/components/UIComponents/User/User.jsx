import './User.css'
import React from 'react'

export default function User(props) {
    return (
        <div className='user__container'>
            <div className='user__title'>{props.name}</div>
            <div className='user__stocks'>Stocks in holding: {props.stocksHeldCount}</div>
            <div className='user__details'><a href={`/user/${props.userId}`}>View Details</a></div>
        </div>
    )
}
