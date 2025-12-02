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

fn count_zero(numbers: Vec<i64>) -> i64 {
    let mut dial = DIAL_START;
    let mut count = 0;
    numbers.iter().for_each(|x| {
        let from_zero: bool = dial == 0; // false if (0,100)
        dial += x;
        match from_zero {
            // "/" is a non-euclidian division rounding towards 0
            false if dial <= 0 => count += (dial / DIAL_MAX).abs() + 1,
            _ => count += (dial / DIAL_MAX).abs(),
        }
        dial = dial.rem_euclid(DIAL_MAX); // bounds dial to a range of [0, 100)
    });
    count
}
