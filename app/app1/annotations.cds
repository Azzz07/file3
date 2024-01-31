using Ms as service from '../../srv/service';

annotate service.student with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'student_id',
            Value : student_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'student_name',
            Value : student_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'email',
            Value : email,
        },
        {
            $Type : 'UI.DataField',
            Value : birthdate,
            Label : 'birthdate',
        },
        {
            $Type : 'UI.DataField',
            Value : phoneno,
            Label : 'phoneno',
        },
    ]
);
annotate service.student with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : student_id,
                Label : 'student_id',
                ![@UI.Hidden],
            },
            {
                $Type : 'UI.DataField',
                Label : 'student_nameee',
                Value : student_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'birthdate',
                Value : birthdate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'phoneno',
                Value : phoneno,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'enrollment',
            ID : 'enrollment',
            Target : 'studenttoenrollment/@UI.LineItem#enrollment',
        },
    ]
);
annotate service.enrollment with @(
    UI.LineItem #enrollment : [
        {
            $Type : 'UI.DataField',
            Value : cancellationreason,
            Label : 'cancellationreason',
            ![@UI.Hidden],
        },{
            $Type : 'UI.DataField',
            Value : cancelled,
            Label : 'cancelled',
        },{
            $Type : 'UI.DataField',
            Value : courseid,
            Label : 'courseid',
        },
        {
            $Type : 'UI.DataField',
            Value : student_id,
            Label : 'student_id',
        },{
            $Type : 'UI.DataField',
            Value : cycleid,
            Label : 'cycleid',
        },{
            $Type : 'UI.DataField',
            Value : coursecytoenrlment.courseenddate,
            Label : 'courseenddate',
        },{
            $Type : 'UI.DataField',
            Value : coursecytoenrlment.courseid,
            Label : 'courseid',
        },{
            $Type : 'UI.DataField',
            Value : coursecytoenrlment.coursestartdate,
            Label : 'coursestartdate',
        },{
            $Type : 'UI.DataField',
            Value : coursecytoenrlment.cycleid,
            Label : 'cycleid',
        },
        {
            $Type : 'UI.DataField',
            Value : enrollmentdate,
            Label : 'enrollmentdate',
        },
        {
            $Type : 'UI.DataField',
            Value : cancellationreason,
            Label : 'cancellationreason',
        },
        {
            $Type : 'UI.DataField',
            Value : coursecytoenrlment.coursebycycletoenrlmnt.cancelled,
            Label : 'cancelled',
        },
        {
            $Type : 'UI.DataField',
            Value : coursecytoenrlment.coursebycycletoenrlmnt.courseid,
            Label : 'courseid',
        },
        {
            $Type : 'UI.DataField',
            Value : coursecytoenrlment.coursebycycletoenrlmnt.cycleid,
            Label : 'cycleid',
        },
        {
            $Type : 'UI.DataField',
            Value : coursecytoenrlment.coursebycycletoenrlmnt.student_id,
            Label : 'student_id',
        },
        {
            $Type : 'UI.DataField',
            Value : coursecytoenrlment.coursebycycletoenrlmnt.coursecytoenrlment.courseenddate,
            Label : 'courseenddate',
        },
        {
            $Type : 'UI.DataField',
            Value : coursecytoenrlment.coursebycycletoenrlmnt.coursecytoenrlment.courseid,
            Label : 'courseid',
        },
        {
            $Type : 'UI.DataField',
            Value : coursecytoenrlment.coursebycycletoenrlmnt.coursecytoenrlment.coursestartdate,
            Label : 'coursestartdate',
        },
        {
            $Type : 'UI.DataField',
            Value : cycleid,
            Label : 'cycleid2',
        },]
);
annotate service.enrollment with {
    cancellationreason @Common.Text : courseid
};
annotate service.enrollment with {
    student_id @Common.Text : studenttoid.student_id
};

annotate service.student with @(
    UI.SelectionPresentationVariant #table : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);
annotate service.student with @(
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View',
    },
    UI.LineItem #tableView : [
    ],
    UI.SelectionPresentationVariant #tableView1 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View 1',
    }
);
annotate service.student with @(
    UI.SelectionFields : [
        student_name,]
);
annotate service.student with {
    student_id @Common.Label : 'student_id'
};
annotate service.student with @(
    UI.HeaderInfo : {
        TypeName : 'h',
        TypeNamePlural : 'hiiiiiiii',
        TypeImageUrl : '',
        Description : {
            $Type : 'UI.DataField',
            Value : student_name,
        },
    }
);
annotate service.student with {
    student_id @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'student',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : student_id,
                    ValueListProperty : 'student_id',
                },
                {
                    $Type : 'Common.ValueListParameterIn',
                    ValueListProperty : 'student_name',
                    LocalDataProperty : student_name,
                },
            ],
            Label : 'help',
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.course with {
    courseid @Common.Text : cousredescription
};
annotate service.enrollment with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'course',
            ID : 'course',
            Target : '@UI.FieldGroup#course1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'coursecycle',
            ID : 'coursecycle',
            Target : '@UI.FieldGroup#coursecycle',
        },],
    UI.FieldGroup #course : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.enrollment with @(
    UI.FieldGroup #course1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : cycleid,
                Label : 'cycleid',
                Criticality : studenttoid.phoneno,
            },{
                $Type : 'UI.DataField',
                Value : courseid,
                Label : 'courseid',
            },
            {
                $Type : 'UI.DataField',
                Value : coursecytoenrlment.courseenddate,
                Label : 'courseenddate',
            },
            {
                $Type : 'UI.DataField',
                Value : coursecytoenrlment.coursestartdate,
                Label : 'coursestartdate',
            },],
    }
);
annotate service.student with {
    student_name @Common.Label : 'student_name'
};
annotate service.enrollment with @(
    UI.FieldGroup #coursecycle : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : cycleid,
                // coursecytoenrlment.coursebycycletoenrlmnt.coursecytoenrlment.coursebycycletoenrlmnt.cycleid,
                Label : 'cycleid',
            },{
                $Type : 'UI.DataField',
                Value : cancellationreason,
                // coursecytoenrlment.coursebycycletoenrlmnt.coursecytoenrlment.coursebycycletoenrlmnt.cancellationreason,
                Label : 'cancellationreason',
            },{
                $Type : 'UI.DataField',
                Value : cancelled,
                // coursecytoenrlment.coursebycycletoenrlmnt.coursecytoenrlment.coursebycycletoenrlmnt.cancelled,
                Label : 'cancelled',
            },{
                $Type : 'UI.DataField',
                Value : coursecytoenrlment.coursebycycletoenrlmnt.coursecytoenrlment.coursebycycletoenrlmnt.courseid,
                Label : 'courseid',
            },{
                $Type : 'UI.DataField',
                Value : enrollmentdate,
                // coursecytoenrlment.coursebycycletoenrlmnt.coursecytoenrlment.coursebycycletoenrlmnt.enrollmentdate,
                Label : 'enrollmentdate',
            },{
                $Type : 'UI.DataField',
                Value :  student_id,
                //  coursecytoenrlment.coursebycycletoenrlmnt.coursecytoenrlment.coursebycycletoenrlmnt.student_id,
                Label : 'student_id',
            },],
    }
);
annotate service.student with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'courseee',
            ID : 'course',
            Target : '@UI.FieldGroup#course',
            ![@UI.Hidden],
        },
    ],
    UI.FieldGroup #course : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : student_name,
            },{
                $Type : 'UI.DataField',
                Value : student_id,
            },],
    }
);
annotate service.enrollment with @(
    UI.HeaderInfo : {
        TypeName : '',
        TypeNamePlural : 'ji',
    }
);
annotate service.student with @(
    UI.SelectionVariant #table : {
        $Type : 'UI.SelectionVariantType',
        SelectOptions : [
        ],
        Text : 'Table View',
    }
);
annotate service.student with @(
    UI.SelectionPresentationVariant #table1 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : ![@UI.SelectionVariant#table],
        Text : 'Table View',
    }
);