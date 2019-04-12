using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Training001.Page
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Populate();
            DataBind();
        }
        private void Populate()
        {
            RegistrationDaysBuild();
            RegistrationMonthsBuild();
            RegistrationYearsBuild();
        }

        private void RegistrationMonthsBuild()
        {
            int MonthCount = 0;
            for (int MonthNumber = 1; MonthNumber <= 12; MonthNumber++)
            {
                RegistrationMonthInsert(MonthNumber, MonthCount);
                MonthCount++;
            }
        }

        private void RegistrationMonthInsert(int MonthNumber, int InsertionPoint)
        {
            DateTime dtDate = new DateTime(2018, MonthNumber, 1);
            string MonthName =  CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(MonthNumber);
            ListItem liMonth;
            liMonth = new ListItem(MonthName.Substring(0,3), MonthNumber.ToString());
            ddlRegistrationMonth.Items.Insert(InsertionPoint, liMonth);
        }

        private void RegistrationDaysBuild()
        {
            int DayCount = 0;
            for(int Day = 1; Day <= 31; Day++)
            {
                RegistrationDayInsert(Day.ToString(), DayCount);
                DayCount++;
            }

        }

        private void RegistrationDayInsert(string DayNumber, int InsertionPoint)
        {
            ListItem liDay;
            liDay = new ListItem(DayNumber);
            ddlRegistrationDay.Items.Insert(InsertionPoint, liDay);
        }

        private void RegistrationYearsBuild()
        {
            int YearCount = 0;
            for(int Year = 2018; Year >= 1900; Year--)
            {
                RegistrationYearsInsert(Year.ToString(), YearCount);
                YearCount++;
            }
        }

        private void RegistrationYearsInsert(string YearNumber, int InsertionPoint)
        {
            ListItem liYear;
            liYear = new ListItem(YearNumber);
            ddlRegistrationYear.Items.Insert(InsertionPoint, liYear);
        }

    }
}