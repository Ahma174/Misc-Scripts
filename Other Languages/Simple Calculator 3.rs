// so many damn calculators ;)
use std::io;

fn main() {
    let mut symb = String::new();
    let mut fir = String::new();
    let mut sec = String::new();
    
    println!("Symbol? ");
    io::stdin().read_line(&mut symb).unwrap();
    
    println!("First Number? ");
    io::stdin().read_line(&mut fir).unwrap();
    let numf: f64 = fir.trim().parse().unwrap();
    
    println!("Second Number? ");
    io::stdin().read_line(&mut sec).unwrap();
    let nums: f64 = sec.trim().parse().unwrap();
    
    if symb.trim() == "+" {
        println!("Results: {} ;)", numf + nums);
    }
    
    if symb.trim() == "-" {
        println!("Results: {} ;)", numf - nums);
    }
    
    if symb.trim() == "*" {
        println!("Results: {} ;)", numf * nums);
    }
    
    if symb.trim() == "/" {
        println!("Results: {} ;)", numf / nums);
    }
}
