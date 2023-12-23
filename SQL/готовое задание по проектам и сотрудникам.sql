{\rtf1\ansi\ansicpg1252\cocoartf2706
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww22200\viewh9860\viewkind0
\deftab560
\pard\pardeftab560\slleading20\partightenfactor0

\f0\fs26 \cf0 -- \uc0\u1042 \u1099 \u1074 \u1077 \u1089 \u1090 \u1080  \u1074 \u1089 \u1077 \u1093  \u1088 \u1072 \u1073 \u1086 \u1090 \u1085 \u1080 \u1082 \u1086 \u1074 , \u1082 \u1086 \u1090 \u1086 \u1088 \u1099 \u1077  \u1088 \u1072 \u1073 \u1086 \u1090 \u1072 \u1102 \u1090  \u1089 \u1088 \u1072 \u1079 \u1091  \u1085 \u1072  \u1085 \u1077 \u1089 \u1082 \u1086 \u1083 \u1100 \u1082 \u1080 \u1093  \u1087 \u1088 \u1086 \u1077 \u1082 \u1090 \u1072 \u1093 . \u1054 \u1090 \u1074 \u1077 \u1090  \u1076 \u1086 \u1083 \u1078 \u1077 \u1085  \u1089 \u1086 \u1076 \u1077 \u1088 \u1078 \u1072 \u1090 \u1100  \u1089 \u1083 \u1077 \u1076 \u1091 \u1102 \u1097 \u1080 \u1077  \u1089 \u1090 \u1086 \u1083 \u1073 \u1094 \u1099 :\
-- \uc0\u1048 \u1084 \u1103  \u1080  \u1092 \u1072 \u1084 \u1080 \u1083 \u1080 \u1103  \u1089 \u1086 \u1090 \u1088 \u1091 \u1076 \u1085 \u1080 \u1082 \u1072 ;\
-- \uc0\u1053 \u1072 \u1079 \u1074 \u1072 \u1085 \u1080 \u1077  \u1076 \u1086 \u1083 \u1078 \u1085 \u1086 \u1089 \u1090 \u1080 .\
\
\
SELECT CONCAT (employee.first_name, ' ', employee.last_name) AS FIO, titles.titel_name AS PALM\
FROM employee\
JOIN positions ON employee.employee_id = positions.employee_id\
JOIN titles ON positions.title_id = titles.id\
GROUP BY FIO, PALM\
HAVING COUNT (positions.project_id) > 1\
\pard\pardeftab560\slleading20\pardirnatural\partightenfactor0
\cf0 \
\
\
\pard\pardeftab560\slleading20\partightenfactor0
\cf0 -- \uc0\u1053 \u1072 \u1087 \u1080 \u1089 \u1072 \u1090 \u1100  \u1076 \u1074 \u1072  SQL \u1079 \u1072 \u1087 \u1088 \u1086 \u1089 \u1072  \u1076 \u1083 \u1103  \u1074 \u1099 \u1087 \u1086 \u1083 \u1085 \u1077 \u1085 \u1080 \u1103  \u1079 \u1072 \u1076 \u1072 \u1085 \u1080 \u1103 :\
-- \uc0\u1042 \u1099 \u1074 \u1077 \u1089 \u1090 \u1080  \u1089 \u1088 \u1077 \u1076 \u1085 \u1102 \u1102  \u1079 \u1072 \u1088 \u1072 \u1073 \u1086 \u1090 \u1085 \u1091 \u1102  \u1087 \u1083 \u1072 \u1090 \u1091  \u1074 \u1089 \u1077 \u1093  \u1090 \u1077 \u1089 \u1090 \u1080 \u1088 \u1086 \u1074 \u1097 \u1080 \u1082 \u1086 \u1074  \u1085 \u1072  \u1087 \u1088 \u1086 \u1077 \u1082 \u1090 \u1077  \'93\u1055 \u1059 \u1052 \u1063 \u1044 \'94. \u1054 \u1090 \u1074 \u1077 \u1090  \u1076 \u1086 \u1083 \u1078 \u1077 \u1085  \u1089 \u1086 \u1076 \u1077 \u1088 \u1078 \u1072 \u1090 \u1100  \u1089 \u1090 \u1086 \u1083 \u1073 \u1094 \u1099 :\
-- \uc0\u1053 \u1072 \u1079 \u1074 \u1072 \u1085 \u1080 \u1077  \u1087 \u1088 \u1086 \u1077 \u1082 \u1090 \u1072 ;\
-- \uc0\u1053 \u1072 \u1079 \u1074 \u1072 \u1085 \u1080 \u1077  \u1076 \u1086 \u1083 \u1078 \u1085 \u1086 \u1089 \u1090 \u1080 ;\
-- \uc0\u1057 \u1088 \u1077 \u1076 \u1085 \u1103 \u1103  \u1079 \u1072 \u1088 \u1072 \u1073 \u1086 \u1090 \u1085 \u1072 \u1103  \u1087 \u1083 \u1072 \u1090 \u1072 .\
\
SELECT project.project_name, titles.titel_name, ROUND(AVG(positions.salary))\
FROM project\
JOIN positions ON project.project_id = positions.project_id\
JOIN titles ON positions.title_id = titles.id\
WHERE titles.titel_name LIKE '%\uc0\u1090 \u1077 \u1089 \u1090 \u1080 \u1088 \u1086 \u1074 \u1097 \u1080 \u1082 %' \
AND projects.project_name = '\uc0\u1055 \u1059 \u1052 \u1063 \u1044 '\
GROUP BY project.project_name, titles.titel_name}