function number_to_joint(num::Int)::String
    joints = [
        "вращение вокруг X",
        "вращение вокруг Y",
        "вращение вокруг Z",
        "перемещение вдоль X",
        "перемещение вдоль Y",
        "перемещение вдоль Z",
    ]
    joints[num + 1]
end

function get_my_robot(group_number::Int, number_in_group::Int)::String
    if group_number < 1 || group_number > 3
        return "Указан неверный номер группы. Воспользуйтесь номером от 1 до 3."
    end
    if number_in_group < 1 || number_in_group > 50
        return "Указан неверный номер в группе."
    end

    first_id = group_number
    second_id = div(number_in_group, 25)
    third_id = div(number_in_group, 5) % 5
    forth_id = number_in_group % 5

    first = first_id
    second = (first + second_id + 1) % 6
    third = (second + third_id + 1) % 6
    forth = (third + forth_id + 1) % 6

    a = number_to_joint(first)
    b = number_to_joint(second)
    c = number_to_joint(third)
    d = number_to_joint(forth)

    """Ваш содержит следующие подвижности:
        $a,
        $b.
        $c,
        $d
    """
end;
