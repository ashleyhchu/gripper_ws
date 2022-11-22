
"use strict";

let Simple = require('./Simple.js');
let SimpleMigrated = require('./SimpleMigrated.js');
let Converged = require('./Converged.js');
let MigratedImplicit = require('./MigratedImplicit.js');
let PartiallyMigrated = require('./PartiallyMigrated.js');
let MigratedExplicit = require('./MigratedExplicit.js');
let MigratedAddSub = require('./MigratedAddSub.js');
let SubUnmigrated = require('./SubUnmigrated.js');
let Constants = require('./Constants.js');
let Renamed5 = require('./Renamed5.js');
let Unmigrated = require('./Unmigrated.js');
let MigratedMixed = require('./MigratedMixed.js');

module.exports = {
  Simple: Simple,
  SimpleMigrated: SimpleMigrated,
  Converged: Converged,
  MigratedImplicit: MigratedImplicit,
  PartiallyMigrated: PartiallyMigrated,
  MigratedExplicit: MigratedExplicit,
  MigratedAddSub: MigratedAddSub,
  SubUnmigrated: SubUnmigrated,
  Constants: Constants,
  Renamed5: Renamed5,
  Unmigrated: Unmigrated,
  MigratedMixed: MigratedMixed,
};
