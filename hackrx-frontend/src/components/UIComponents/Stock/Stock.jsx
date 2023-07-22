import React, { useEffect, useState } from 'react'
import './Stock.css'
import axios from 'axios';
// import image from './graph.png'



export default function Stock(props) {
    const [stockPrice, setStockPrice] = useState('');
    const [graphState, setGraphState] = useState('');
    const getStockPrice = () => {
        axios.post('/api/stock', {
            symbol: props.symbol
        })
            .then(response => {
                setStockPrice(response.data);
                return response.data
            })
    }

    useEffect(() => {
        setStockPrice(getStockPrice());
    }, [])


    // const labels = ["January", "February", "March", "April", "May", "June"];

    // const data = {
    //     labels: labels,
    //     datasets: [
    //         {
    //             label: "My First dataset",
    //             backgroundColor: "rgb(255, 99, 132)",
    //             borderColor: "rgb(255, 99, 132)",
    //             data: [0, 10, 5, 2, 20, 30, 45],
    //         },
    //     ],
    // };
    return (
        <div className='stock__container'>
            <div className='stock__row1'>
                <p className={'stock__symbol'}>{props.symbol}</p>
                <p className='stock__price'>₹{(stockPrice === null ? 'Nil' : stockPrice)}</p>
            </div>
            <div className='stock__row2'>
                <div>
                    <p className='stock__name'>{props.name || ""}</p>
                    <p className='stock__category'>{props.category || ""}</p>
                </div>
                {/* <img src={'../../../../../hackrx-flask/graphs/' + props.symbol} alt='stock graph' /> */}
                <img src={`../../../../public/graphs/${props.symbol}.png`} alt=''></img>
                {/* <Line data={data} /> */}
            </div>
        </div>
    )
}
