namespace ProductsDesktopApp
{
    partial class MainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            productNameTextBox = new System.Windows.Forms.TextBox();
            productPriceTextBox = new System.Windows.Forms.TextBox();
            productStockTextBox = new System.Windows.Forms.TextBox();
            productNameLabel = new System.Windows.Forms.Label();
            productPriceLabel = new System.Windows.Forms.Label();
            productStockLabel = new System.Windows.Forms.Label();
            insertProductButton = new System.Windows.Forms.Button();
            updateProductButton = new System.Windows.Forms.Button();
            saveProductButton = new System.Windows.Forms.Button();
            deleteProductButton = new System.Windows.Forms.Button();
            productsManagementDataGridView = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)productsManagementDataGridView).BeginInit();
            SuspendLayout();
            // 
            // productNameTextBox
            // 
            productNameTextBox.Location = new System.Drawing.Point(134, 48);
            productNameTextBox.Name = "productNameTextBox";
            productNameTextBox.Size = new System.Drawing.Size(247, 27);
            productNameTextBox.TabIndex = 0;
            // 
            // productPriceTextBox
            // 
            productPriceTextBox.Location = new System.Drawing.Point(134, 106);
            productPriceTextBox.Name = "productPriceTextBox";
            productPriceTextBox.Size = new System.Drawing.Size(247, 27);
            productPriceTextBox.TabIndex = 1;
            // 
            // productStockTextBox
            // 
            productStockTextBox.Location = new System.Drawing.Point(134, 164);
            productStockTextBox.Name = "productStockTextBox";
            productStockTextBox.Size = new System.Drawing.Size(247, 27);
            productStockTextBox.TabIndex = 2;
            // 
            // productNameLabel
            // 
            productNameLabel.AutoSize = true;
            productNameLabel.Location = new System.Drawing.Point(58, 51);
            productNameLabel.Name = "productNameLabel";
            productNameLabel.Size = new System.Drawing.Size(49, 20);
            productNameLabel.TabIndex = 3;
            productNameLabel.Text = "Name";
            // 
            // productPriceLabel
            // 
            productPriceLabel.AutoSize = true;
            productPriceLabel.Location = new System.Drawing.Point(58, 109);
            productPriceLabel.Name = "productPriceLabel";
            productPriceLabel.Size = new System.Drawing.Size(41, 20);
            productPriceLabel.TabIndex = 4;
            productPriceLabel.Text = "Price";
            // 
            // productStockLabel
            // 
            productStockLabel.AutoSize = true;
            productStockLabel.Location = new System.Drawing.Point(58, 167);
            productStockLabel.Name = "productStockLabel";
            productStockLabel.Size = new System.Drawing.Size(45, 20);
            productStockLabel.TabIndex = 5;
            productStockLabel.Text = "Stock";
            // 
            // insertProductButton
            // 
            insertProductButton.Location = new System.Drawing.Point(58, 221);
            insertProductButton.Name = "insertProductButton";
            insertProductButton.Size = new System.Drawing.Size(94, 29);
            insertProductButton.TabIndex = 6;
            insertProductButton.Text = "Insert";
            insertProductButton.UseVisualStyleBackColor = true;
            insertProductButton.Click += insertProductButton_Click;
            // 
            // updateProductButton
            // 
            updateProductButton.Location = new System.Drawing.Point(174, 221);
            updateProductButton.Name = "updateProductButton";
            updateProductButton.Size = new System.Drawing.Size(94, 29);
            updateProductButton.TabIndex = 7;
            updateProductButton.Text = "Update";
            updateProductButton.UseVisualStyleBackColor = true;
            updateProductButton.Click += updateProductButton_Click;
            // 
            // saveProductButton
            // 
            saveProductButton.Location = new System.Drawing.Point(174, 221);
            saveProductButton.Name = "saveProductButton";
            saveProductButton.Size = new System.Drawing.Size(94, 29);
            saveProductButton.TabIndex = 8;
            saveProductButton.Text = "Save";
            saveProductButton.UseVisualStyleBackColor = true;
            saveProductButton.Visible = false;
            saveProductButton.Click += saveProductButton_Click;
            // 
            // deleteProductButton
            // 
            deleteProductButton.Location = new System.Drawing.Point(287, 221);
            deleteProductButton.Name = "deleteProductButton";
            deleteProductButton.Size = new System.Drawing.Size(94, 29);
            deleteProductButton.TabIndex = 9;
            deleteProductButton.Text = "Delete";
            deleteProductButton.UseVisualStyleBackColor = true;
            deleteProductButton.Click += deleteProductButton_Click;
            // 
            // productsManagementDataGridView
            // 
            productsManagementDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            productsManagementDataGridView.Location = new System.Drawing.Point(424, 48);
            productsManagementDataGridView.Name = "productsManagementDataGridView";
            productsManagementDataGridView.RowHeadersWidth = 51;
            productsManagementDataGridView.RowTemplate.Height = 29;
            productsManagementDataGridView.Size = new System.Drawing.Size(612, 362);
            productsManagementDataGridView.TabIndex = 10;
            // 
            // MainForm
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(1083, 457);
            Controls.Add(productsManagementDataGridView);
            Controls.Add(deleteProductButton);
            Controls.Add(saveProductButton);
            Controls.Add(updateProductButton);
            Controls.Add(insertProductButton);
            Controls.Add(productStockLabel);
            Controls.Add(productPriceLabel);
            Controls.Add(productNameLabel);
            Controls.Add(productStockTextBox);
            Controls.Add(productPriceTextBox);
            Controls.Add(productNameTextBox);
            Name = "MainForm";
            Text = "MainForm";
            Load += MainForm_Load;
            ((System.ComponentModel.ISupportInitialize)productsManagementDataGridView).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.TextBox productNameTextBox;
        private System.Windows.Forms.TextBox productPriceTextBox;
        private System.Windows.Forms.TextBox productStockTextBox;
        private System.Windows.Forms.Label productNameLabel;
        private System.Windows.Forms.Label productPriceLabel;
        private System.Windows.Forms.Label productStockLabel;
        private System.Windows.Forms.Button insertProductButton;
        private System.Windows.Forms.Button updateProductButton;
        private System.Windows.Forms.Button saveProductButton;
        private System.Windows.Forms.Button deleteProductButton;
        private System.Windows.Forms.DataGridView productsManagementDataGridView;
    }
}