$(document).ready(function ()
{
    $.post("/Handler/SessionHandler.ashx",
            {},
            function (data)
            {
                if (data == -1)
                {
                    $("#Pim").hide();
                }
                else
                {
                    $("#Login").hide();
                    $("#Register").hide();
                }

            }
            );
})