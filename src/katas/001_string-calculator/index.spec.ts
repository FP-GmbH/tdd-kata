import {main} from "./index";

describe("when running the app", () => {
    it("should output 'Hello, World!'", () => {
        const consoleSpy = jest.spyOn(console, "log");
        main();
        expect(consoleSpy).toHaveBeenCalledWith("Hello, World!");
    });
});