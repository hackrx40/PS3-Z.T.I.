import React from 'react'
import './Button.css'
export default function Button(props) {
    return (
        <a href={props.href}>
            <button
                className={`button ${props.className}`}
                onClick={props.onClick}
            >{props.children}</button>
        </a>
    )
}
