%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SEFA Pipeline - Preprocessing Script
%
% Two-stage pipeline for simultaneous EEG-fMRI preprocessing:
%   Stage 1: Gradient & BCG artifact correction (FMRIB)
%   Stage 2: EEG cleaning (HAPPE-based)
%
% Reference: Hosseinzadeh et al., ICBME 2025 (IEEE)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Restart MATLAB environment
clc; clear; close all;

%% --- Session parameters (edit as needed) ---
session_name = 32;                           % Example subject/session ID
task         = 1;                            % Example task ID
main_folder  = 'D:\myproject\mse_thesis';    % Change to your project path

% Define paths
data_loc   = fullfile(main_folder, ['Data\Session ' num2str(session_name)]);
result_loc = fullfile(main_folder, ['Analysis\session' num2str(session_name)]);
filename   = ['RawData_sub' num2str(session_name) '_Task' num2str(task) '.set'];

%% --- Stage 1: FMRIB artifact correction ---
fprintf('\n[SEFA] Stage 1: Running FMRIB artifact removal...\n');
data_stage1 = step1_fmrib(session_name, task, data_loc, result_loc, filename);

%% --- Stage 2: HAPPE EEG cleaning ---
fprintf('\n[SEFA] Stage 2: Running HAPPE EEG cleaning...\n');
data_stage2 = step2(session_name, task, result_loc, data_stage1);

%% Done
fprintf('\n[SEFA] Preprocessing complete. Results saved in: %s\n', result_loc);
