const { environment } = require('@rails/webpacker');
const webpack = require('webpack');
const dotenv = require('dotenv');

const dotenvFiles = [
    `.env.${process.env.NODE_ENV}.local`,
    '.env.local',
    `.env.${process.env.NODE_ENV}`,
    '.env'
];

dotenvFiles.forEach((dotenvFile) => {
    dotenv.config({ path: dotenvFile, silent: true })
});
// sass-loaderの設定を取得
const sassLoaders = environment.loaders.get('sass');
const sassLoaderConfig = sassLoaders.use.filter(config => config.loader === 'sass-loader')[0];

// sass-loaderに自動ロードの設定をがっちゃんこする
Object.assign(sassLoaderConfig.options, {
    data: "@import 'global-imports.scss';",
    includePaths: [path.resolve(__dirname, '../../app/javascript/stylesheets/')]
});


module.exports = environment;
