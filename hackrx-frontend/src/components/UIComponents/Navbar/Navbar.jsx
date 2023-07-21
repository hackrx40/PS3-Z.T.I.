import './Navbar.css'
import React from 'react'

export default function Navbar() {
    return (
        <div className='nav__wrapper' id='NavBar' >
            <div className='nav__container'>
                <span className='nav__title'><a href='/'>AI Stock Recommender</a></span>
                <div className='nav__links'>
                    <span className='nav__link'><a href='/'>Home</a></span>
                    <span className='nav__link'><a href='/stocks'>Stocks</a></span>
                    <span className='nav__link'><a href='/users'>Users</a></span>
                </div>
            </div>
        </div>
    )
}
