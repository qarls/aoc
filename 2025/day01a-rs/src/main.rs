// rustc 1.91.1
use std::io::{self, Read};

static DIAL_START: i64 = 50;
static DIAL_MAX: i64 = 100;

fn main() {
    let mut input = String::new();
    io::stdin()
        .read_to_string(&mut input)
        .expect("Invalid input");

    let numbers = parse_num(input);
    let count = count_zero(numbers);
    println!("{}", count);
}

fn parse_num(input: String) -> Vec<i64> {
    input
        .replace("L", "-")
        .replace("R", "")
        .lines()
        .map(|x| x.trim().parse::<i64>().unwrap())
        .collect()
}

fn count_zero(numbers: Vec<i64>) -> u64 {
    let mut dial = DIAL_START;
    let mut count = 0;
    numbers.iter().for_each(|x| {
        dial += x;
        dial = dial.rem_euclid(DIAL_MAX);
        if dial == 0 {
            count += 1;
        }
    });
    count
}
