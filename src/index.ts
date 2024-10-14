export function main() {
    console.log("Hello, World!");
}

export function add(input: string): number {

    if (input === '') {
        return 0;
    }

    return parseInt(input);
}