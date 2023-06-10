"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.useElementRef = void 0;
var react_1 = require("react");
var util_1 = require("./util");
var useElementRef = function (containerClassName, containerStyle) {
    var ref = react_1.useRef();
    var element = react_1.useMemo(function () { return util_1.createContainer(containerStyle, containerClassName); }, [containerClassName, containerStyle]);
    ref.current = element;
    return ref;
};
exports.useElementRef = useElementRef;
//# sourceMappingURL=useElementRef.js.map