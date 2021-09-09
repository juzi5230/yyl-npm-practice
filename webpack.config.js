var path = require('path')
var webpack = require('webpack')
const NODE_ENV = process.env.NODE_ENV

module.exports = {
  entry: NODE_ENV == 'development' ? './src/main.js':'./index.js',
  output: {
    path: path.resolve(__dirname, './dist'),
    publicPath: '/dist/',
    filename: 'yyl-npm-practice.js',
    library: 'yyl-npm-practice',
    libraryTarget: 'umd',
    umdNamedDefine: true
  },
  module: {
    rules: [
      {
        test: /\.css$/,
        use: [
          'vue-style-loader',
          'css-loader'
        ],
      },      {
        test: /\.vue$/,
        loader: 'vue-loader',
        options: {
          loaders: {
          }
          // other vue-loader options go here
        }
      },
      {
        test: /\.js$/,
        loader: 'babel-loader',
        exclude: /node_modules/
      },
      {
        test: /\.(png|jpg|gif|svg)$/,
        loader: 'file-loader',
        options: {
          name: '[name].[ext]?[hash]'
        }
      },
      {
        test: /\.ftl$/,
        loader: 'freemarker2js-loader'
      }
    ]
  },
  resolve: {
    alias: {
      'vue$': 'vue/dist/vue.esm.js'
    },
    extensions: ['*', '.js', '.vue', '.json']
  },
  // devServer: {
  //   historyApiFallback: true,
  //   noInfo: true,
  //   overlay: true
  // },

  devServer: {
    contentBase: path.join(__dirname, "./"),
    compress: true,
    port: 9001,
    host: '0.0.0.0',
    proxy: {
      '/common_selector': {
        target: 'http://api.lezhixing.com.cn/mock/247/', // mock
        // target: 'http://cbcs.4yec.com', // 测试
        // target: 'http://10.4.88.130:8080', // 后台地址
        changeOrigin: true,
        headers: {
          Cookie: '_ga=GA1.1.1822123482.1574818662; USER_OPERATER_COOKIE_KEY=1586483904202; AQ_VID=cb0098f4bb644457bee6447c67f1e934; AQ_AUTHENTICATION_COOKIE_KEY=5c45bcf5e6644e53a7cb50ba4629af14; AQ_SCHOOL_LOGIN_COOKIE=1; _gid=GA1.1.1623672775.1587554638; JSESSIONID=8E227C858A355E063804FC368EC7CFE2; AQ_AUTHENTICATION_COOKIE_KEY_SIGN=13e4f3653c73e83deaf3182fa0e0b00472c542175fdc7767b0e79645ad75e3ca1f4cae29f789d055fff47a6ac31befd4234f8565deacb7885029eb015850841320a7fa8c86e77aaa7dd262fc9e4c9cbc; AQ_AUTHENTICATION_UID_COOKIE_KEY=13e4f3653c73e83deaf3182fa0e0b00472c542175fdc77672de8c101d23c2cd634f9d3bade6c0592b521f736d80118d5c972c9b527ff9fe7'
        }
        // pathRewrite: {
        //   '^/common_selector': '/mock/247/common_selector'
        // }
      }
    }
  },
  performance: {
    hints: false
  }
}

if (process.env.NODE_ENV === 'production') {
  module.exports.devtool = '#source-map'
  // http://vue-loader.vuejs.org/en/workflow/production.html
  module.exports.plugins = (module.exports.plugins || []).concat([
    new webpack.DefinePlugin({
      'process.env': {
        NODE_ENV: '"production"'
      }
    }),
    new webpack.optimize.UglifyJsPlugin({
      sourceMap: true,
      compress: {
        warnings: false
      }
    }),
    new webpack.LoaderOptionsPlugin({
      minimize: true
    })
  ])
} else {
  module.exports.devtool = '#eval-source-map'
}
