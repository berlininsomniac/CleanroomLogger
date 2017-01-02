//
//  ReadableLogFormatter.swift
//  CleanroomLogger
//
//  Created by Evan Maloney on 1/6/16.
//  Copyright © 2016 Gilt Groupe. All rights reserved.
//

/**
 A `LogFormatter` configured to be ideal for writing human-readable log files.

 By default, this formatter:

 - Uses `.default` as the default `TimestampStyle`
 - Uses `.simple` as the default `SeverityStyle`
 - Uses default field separator delimiters
 - Outputs the call site and calling thread

 These defaults can be overridden during instantiation.
 */
open class ReadableLogFormatter: StandardLogFormatter
{
    /**
     Initializes a new `ReadableLogFormatter` instance.

     - parameter timestampStyle: Governs the formatting of the timestamp in the
     log output. Pass `nil` to suppress output of the timestamp.

     - parameter severityStyle: Governs the formatting of the `LogSeverity` in
     the log output. Pass `nil` to suppress output of the severity.

     - parameter delimiterStyle: If provided, overrides the default field
     separator delimiters. Pass `nil` to use the default delimiters.

     - parameter showCallSite: If `true`, the source file and line indicating
     the call site of the log request will be added to formatted log messages.

     - parameter showCallingThread: If `true`, a hexadecimal string containing
     an opaque identifier for the calling thread will be added to formatted log
     messages.
     */
    public override init(timestampStyle: TimestampStyle? = .default, severityStyle: SeverityStyle? = .simple, delimiterStyle: DelimiterStyle? = nil, showCallSite: Bool = true, showCallingThread: Bool = true)
    {
        super.init(timestampStyle: timestampStyle, severityStyle: severityStyle, delimiterStyle: delimiterStyle, showCallSite: showCallSite, showCallingThread: showCallingThread)
    }
}
