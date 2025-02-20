const { Pool } = require("pg");

const pool = new Pool({
  user: "smckinlay",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});

const cohortName = process.argv[2];
const queryString = `SELECT DISTINCT teachers.name AS teacher, cohorts.name as cohort
                      FROM teachers
                      JOIN assistance_requests req ON teachers.id = req.teacher_id
                      JOIN students ON req.student_id = students.id
                      JOIN cohorts ON students.cohort_id = cohorts.id
                      WHERE cohorts.name = $1
                      ORDER BY teacher`;
const values = [cohortName];

pool
  .query(queryString, values)
  .then((res) => {
    res.rows.forEach((row) => {
      console.log(`${row.cohort}: ${row.teacher}`);
    });
  })
  .catch((err) => console.log("query error", err.stack));
