import './Stocks.css'
import React from 'react'
import { DUMMY_STOCKS } from '../Dummy/DummyStocks'
import Stock from '../components/UIComponents/Stock/Stock';

export default function Stocks() {
    return (
        <div className='stocks__wrapper'>
            <div className='stocks__container'>
                <p className='stocks__title'>All Stocks</p>
                <button></button>
                <div className='stocks__grid'>
                    {DUMMY_STOCKS.map((stock) => {
                        return <Stock key={stock.id} symbol={stock.symbol} name={stock.name} category={stock.category} />
                    })}
                </div>
            </div>
        </div>
    )
}
