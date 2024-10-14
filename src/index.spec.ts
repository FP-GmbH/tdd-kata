import { main } from "./index";
import { add } from "./index";

describe("when I give a string as an input", () => {

    describe("and it's an empty string", () => {

        it("should return zero", () => {

            const summary = add('')
            expect(summary).toBe(0);
        });
    });
    describe("when string is number '1'", ()=>{
        it("should return 1", ()=>{
            const summary = add('1')
            expect(summary).toBe(1);
        });
    })
});