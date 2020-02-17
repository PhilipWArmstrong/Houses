import React, { Component } from 'react';
import Chart from 'chart.js'

class BarChart extends Component {

    constructor (props) {
        super(props)
        this.state = {}
        this.createChart = this.createChart.bind(this)
    }

    componentDidMount() {
        this.getData()
    }

    getData = () => {
        fetch('http://localhost:3000/houses/1')                                        
            .then(response => response.json())                                            
            .then(json => this.prepareData(json))
            .then(data => this.createChart(data));
    }

    prepareData = (data) => {
        const chartData = {
            labels: [],
            datasets: [
                {
                    label: 'Sold Price',
                    data: [],
                    lineTension: 0,
                    borderColor: 'rgb(0, 0, 0)',
                    // backgroundColor: 'rgb(173, 216, 230)'

                },
                {
                    label: 'Listed Price',
                    data: [],
                    borderColor: 'rgb(173, 216, 230)'
                }
            ]
        }
        data.listeds.forEach(listed => {
            chartData.labels.push(listed.id)
            chartData.datasets[0].data.push(listed.sold_price)
            chartData.datasets[1].data.push(listed.listed_price)
        })
        console.log(chartData)
        return chartData
    }

    createChart (data) {
        const ctx = document.querySelector('#houses')
        const listedsCharts = new Chart(ctx, {
            type: 'line',
            data: data
        })
    }

    render () {
        return (
        <>
            <h1>History of Home Sold Price</h1>
            <canvas id="houses" width="300" height="100"></canvas>
        </>
        )
    }
}

export default BarChart;