# Tech Test for Charlie HR

This tech test was given a 45 minute time-limit to be completed in. It involves comparing dates to calculate a user's age and next birthday.

## Goals

- Write a function `age` that returns an integer of the user's current age
- Write a function `next_birthday` which returns a Date object with the user's next birthday.

## Plan

### Age Function

- Take the date_of_birth instance variable
- Calculate difference between current year and year born
- If user's birth month is after current month, subtract 1 from difference
- If user's birth month is before current month, do nothing
- If user's birth month is same as current month:
  - Compare current day with birth day
  - If current day is before birth day, subtract one from year difference
  - If current day is same as or after birth day, do nothing.

### Next Birthday Function

- Take the date_of_birth instance variable
- If user's birth month is before current month:
  - Take Date.today.year and add 1
  - Output date_of_birth with current year + 1
- If user's birth month is current month:
  - If user's birth day is after current day:
    - Use current year
  - If user's birth day is the current day:
    - Use next year
  - If user's birth day is before current day:
    - Use next year
- If user's birth month is after current month, use current year.

## Testing

In tech tests, I usually write code with a test-driven approach. I believe it leads to cleaner code, with less unnecessary actions taken towards a solution. It also means I know what I'm writing works properly.