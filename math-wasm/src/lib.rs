#[unsafe(export_name = "add")]
pub extern "C" fn add(left: f32, right: f32) -> f32 {
    left + right
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        let result = add(2.0, 2.0);
        assert_eq!(result, 4.0);
    }
}
