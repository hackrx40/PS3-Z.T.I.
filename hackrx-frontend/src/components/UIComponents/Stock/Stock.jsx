import React from 'react'
import './Stock.css'

export default function Stock(props) {
    return (
        <div className='stock__container'>
            <div className='stock__row1'>
                <p className={`stock__name ${props.stockDown ? "red" : "green"}`}>{props.name}</p>
                <p className='stock__price'>₹{(props.price.toFixed(2))}</p>
            </div>
            <div className='stock__row2'>
                <p className='stock__category'>{props.category}</p>
            </div>
        </div>
    )
}
