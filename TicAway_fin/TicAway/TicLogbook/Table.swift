//
//  Table.swift
//  TicAway
//
//  Created by Vici Zeillinger on 21.06.23.
//

import Foundation

struct Table<Value, Rows, Columns> where Value == Rows.TableRowValue, Rows : TableRowContent, Columns : TableColumnContent, Rows.TableRowValue == Columns.TableRowValue
