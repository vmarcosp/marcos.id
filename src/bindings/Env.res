type nodeEnv = [ #development | #production]
@val
external nodeEnv: nodeEnv = "process.env.NODE_ENV"
