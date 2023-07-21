import './Stocks.css'
import React from 'react'
import { DUMMY_STOCKS } from '../Dummy/DummyStocks'
import Stock from '../components/UIComponents/Stock/Stock';

export default function Stocks() {
    return (
        <div className='stocks__wrapper'>
            <div className='stocks__container'>
                <p className='stocks__title'>All Stocks</p>
                <div className='stocks__grid'>
                    {DUMMY_STOCKS.map((stock) => {
                        return <Stock key={stock.id} name={stock.name} price={stock.price} stockDown={stock.stockDown} category={stock.category} />
                    })}
                </div>
            </div>
        </div>
    )
}
