from flask import Flask, jsonify, request, render_template

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/google-charts/data-chart')
def google_pie_chart():
    data = {'Task': 'Hours per Day','Work': 11, 'Eat' : 2, 'Commute':2, 'Watch TV':2,'Sleep':7 }
    return render_template('data-charts.html', data=data)

if __name__ == "__main__":
    app.run()