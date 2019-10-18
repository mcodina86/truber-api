const Koa = require('koa');
const logger = require('koa-logger');
const app = new Koa();

app.use(logger());

app.use(async ctx => {
  ctx.body = 'Hello World';
});

app.listen(5000);
