# 2024 GHS to USD Exchange Rate Analysis

This repository provides an analysis of the monthly changes in the Ghanaian Cedi (GHS) to US Dollar (USD) exchange rate for the year 2024. The analysis is based on data sourced from the Bank of Ghana and visualized using R (RStudio).

---
  
## Project Overview
  
The exchange rate between the Ghanaian Cedi (GHS) and the US Dollar (USD) reflects monthly percentage changes throughout 2024. This project includes a visualization that highlights the trends, including the months with the lowest and highest percentage changes.

Key features of the analysis:
  - **Data Source**: Bank of Ghana.
- **Visualization Tool**: R (RStudio) programming language with the `ggplot2` library.
- **Purpose**: To provide an intuitive view of the GHS to USD exchange rate dynamics for 2024.

---
  
## Data
  
The dataset consists of monthly percentage changes in the GHS to USD exchange rate for 2024. These changes are presented as follows:
  
  | Month | Percentage Change (%) |
  |-------|------------------------|
  | Jan   | 12.46                 |
  | Feb   | 12.78                 |
  | Mar   | 13.38                 |
  | Apr   | 13.89                 |
  | May   | 15.02                 |
  | Jun   | 15.56                 |
  | Jul   | 15.81                 |
  | Aug   | 16.04                 |
  | Sep   | 16.17                 |
  | Oct   | 16.71                 |
  | Nov   | 16.79                 |
  | Dec   | 15.88                 |
  
Key observations:
- The **lowest percentage change** occurred in January (12.46%).
- The **highest percentage change** occurred in November (16.79%).
- The rate increased steadily until December, when it dropped, possibly influenced by various factors, such as the 2024 general election and the December festivities.

---
  
## Visualization
  
The visualization uses a line chart to depict the monthly changes:
- **Line Plot**: Highlights the trends in the exchange rate percentage changes over the months.
- **Annotations**:
  - The month with the lowest change is labeled as "Lowest Change."
  - The month with the highest change is labeled as "Highest Change."
- **Color Gradient**: Points are color-coded from orange (low values) to red (high values) for better visual emphasis.

### Sample Chart:

![2024 GHS to USD Exchange Rate](https://github.com/user-attachments/assets/1a705d2e-d2de-4ccd-82bc-dbd897b02eab)

---
  
## R Script
  
  The R script (`ghana_cedi_exchange_rate_2024.R`) generates the visualization. Below is an overview of the script's key components:

### Key Libraries
- `ggplot2`: Used for creating the visualization.
- `dplyr`: Utilized for data manipulation.

### Code Features
- Data preparation: A data frame containing months and percentage changes.
- Visualization:
  - Line chart with labeled points.
  - Annotated highlights for the lowest and highest percentage changes.

You can find the script in the repository as `ghana_cedi_exchange_rate_2024.R`.

---

## How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/appiahadjei/ghana_cedi_exchange_rate_2024.git
   ```

2. Open the R script (`ghana_cedi_exchange_rate_2024.R`) in your preferred R IDE (e.g., RStudio).

3. Install required libraries if not already installed:
   ```R
   install.packages("ggplot2")
   install.packages("dplyr")
   ```

4. Run the script to generate the visualization.

---

## File Structure

```
├── ghana_cedi_exchange_rate_2024.R   # R script for generating the visualization
├── README.md                         # Documentation
├── 2024 GHS to USD Exchange Rate.png # The chart
```

---

## Contribution

Contributions are welcome! If you would like to enhance this project, feel free to fork the repository and create a pull request.

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

---

## Acknowledgment

**Bank of Ghana**: For providing the data used in this analysis.
