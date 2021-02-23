"use strict";

exports.handler = async (event, context) => {
  console.log("EVENT: ", event);
  console.log("CONTEXT: ", context);

  return { message: "Hello World!" };
};
