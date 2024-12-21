--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major character varying,
    gpa numeric(2,1),
    student_id integer NOT NULL,
    major_id integer
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (38, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (39, 'Web Programming');
INSERT INTO public.courses VALUES (40, 'Database Systems');
INSERT INTO public.courses VALUES (41, 'Computer Networks');
INSERT INTO public.courses VALUES (42, 'SQL');
INSERT INTO public.courses VALUES (43, 'Machine Learning');
INSERT INTO public.courses VALUES (44, 'Computer Systems');
INSERT INTO public.courses VALUES (45, 'Web Applications');
INSERT INTO public.courses VALUES (46, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (47, 'Python');
INSERT INTO public.courses VALUES (48, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (49, 'Calculus');
INSERT INTO public.courses VALUES (50, 'Game Architecture');
INSERT INTO public.courses VALUES (51, 'Algorithms');
INSERT INTO public.courses VALUES (52, 'UNIX');
INSERT INTO public.courses VALUES (53, 'Server Administration');
INSERT INTO public.courses VALUES (54, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (51, 'Database Administration');
INSERT INTO public.majors VALUES (52, 'Web Development');
INSERT INTO public.majors VALUES (53, 'Data Science');
INSERT INTO public.majors VALUES (54, 'Network Engineering');
INSERT INTO public.majors VALUES (55, 'Computer Programming');
INSERT INTO public.majors VALUES (56, 'Game Design');
INSERT INTO public.majors VALUES (57, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (51, 38);
INSERT INTO public.majors_courses VALUES (52, 39);
INSERT INTO public.majors_courses VALUES (51, 40);
INSERT INTO public.majors_courses VALUES (53, 38);
INSERT INTO public.majors_courses VALUES (54, 41);
INSERT INTO public.majors_courses VALUES (51, 42);
INSERT INTO public.majors_courses VALUES (53, 43);
INSERT INTO public.majors_courses VALUES (54, 44);
INSERT INTO public.majors_courses VALUES (55, 41);
INSERT INTO public.majors_courses VALUES (51, 45);
INSERT INTO public.majors_courses VALUES (56, 46);
INSERT INTO public.majors_courses VALUES (53, 47);
INSERT INTO public.majors_courses VALUES (55, 48);
INSERT INTO public.majors_courses VALUES (57, 44);
INSERT INTO public.majors_courses VALUES (56, 49);
INSERT INTO public.majors_courses VALUES (52, 38);
INSERT INTO public.majors_courses VALUES (53, 49);
INSERT INTO public.majors_courses VALUES (52, 48);
INSERT INTO public.majors_courses VALUES (56, 50);
INSERT INTO public.majors_courses VALUES (57, 41);
INSERT INTO public.majors_courses VALUES (56, 51);
INSERT INTO public.majors_courses VALUES (57, 52);
INSERT INTO public.majors_courses VALUES (57, 53);
INSERT INTO public.majors_courses VALUES (55, 44);
INSERT INTO public.majors_courses VALUES (55, 47);
INSERT INTO public.majors_courses VALUES (54, 54);
INSERT INTO public.majors_courses VALUES (52, 45);
INSERT INTO public.majors_courses VALUES (54, 51);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES ('Rhea', 'Kellems', NULL, 2.5, 30, 51);
INSERT INTO public.students VALUES ('Emma', 'Gilbert', NULL, NULL, 31, NULL);
INSERT INTO public.students VALUES ('Kimberly', 'Whitley', NULL, 3.8, 32, 52);
INSERT INTO public.students VALUES ('Jimmy', 'Felipe', NULL, 3.7, 33, 51);
INSERT INTO public.students VALUES ('Kyle', 'Stimson', NULL, 2.8, 34, NULL);
INSERT INTO public.students VALUES ('Casares', 'Hijo', NULL, 4.0, 35, 56);
INSERT INTO public.students VALUES ('Noe', 'Savage', NULL, 3.6, 36, NULL);
INSERT INTO public.students VALUES ('Sterling', 'Boss', NULL, 3.9, 37, 56);
INSERT INTO public.students VALUES ('Brian', 'Davis', NULL, 2.3, 38, NULL);
INSERT INTO public.students VALUES ('Kaija', 'Uronen', NULL, 3.7, 39, 56);
INSERT INTO public.students VALUES ('Faye', 'Conn', NULL, 2.1, 40, 56);
INSERT INTO public.students VALUES ('Efren', 'Reilly', NULL, 3.9, 41, 52);
INSERT INTO public.students VALUES ('Danh', 'Nhung', NULL, 2.4, 42, NULL);
INSERT INTO public.students VALUES ('Maxine', 'Hagenes', NULL, 2.9, 43, 51);
INSERT INTO public.students VALUES ('Larry', 'Saunders', NULL, 2.2, 44, 53);
INSERT INTO public.students VALUES ('Karl', 'Kuhar', NULL, NULL, 45, 52);
INSERT INTO public.students VALUES ('Lieke', 'Hazenveld', NULL, 3.5, 46, 56);
INSERT INTO public.students VALUES ('Obie', 'Hilpert', NULL, NULL, 47, 52);
INSERT INTO public.students VALUES ('Peter', 'Booysen', NULL, 2.9, 48, NULL);
INSERT INTO public.students VALUES ('Nathan', 'Turner', NULL, 3.3, 49, 51);
INSERT INTO public.students VALUES ('Gerald', 'Osiki', NULL, 2.2, 50, 53);
INSERT INTO public.students VALUES ('Vanya', 'Hassanah', NULL, 4.0, 51, 56);
INSERT INTO public.students VALUES ('Roxelana', 'Florescu', NULL, 3.2, 52, 51);
INSERT INTO public.students VALUES ('Helene', 'Parker', NULL, 3.4, 53, 53);
INSERT INTO public.students VALUES ('Mariana', 'Russel', NULL, 1.8, 54, 52);
INSERT INTO public.students VALUES ('Ajit', 'Dhungel', NULL, 3.0, 55, NULL);
INSERT INTO public.students VALUES ('Mehdi', 'Vandenberghe', NULL, 1.9, 56, 51);
INSERT INTO public.students VALUES ('Dejon', 'Howell', NULL, 4.0, 57, 52);
INSERT INTO public.students VALUES ('Aliya', 'Gulgowski', NULL, 2.6, 58, 57);
INSERT INTO public.students VALUES ('Ana', 'Tupajic', NULL, 3.1, 59, 53);
INSERT INTO public.students VALUES ('Hugo', 'Duran', NULL, 3.8, 60, NULL);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 54, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 57, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 60, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

