import {stringCalculator} from "./index";

describe("when called with empty string", () => {
    it("should return 0", () => {
        const input = "";
        const result = stringCalculator(input);
        expect(result).toBe(0);
    });
});